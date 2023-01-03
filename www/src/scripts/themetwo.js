var has = Object.prototype.hasOwnProperty;

/**
 * Возвращает новый объект, полностью копируя все собственные свойства объектов на всех уровнях вложенности.
 * Примечание: Если имена свойств повторяются, то результатом будет значение последнего переданного объекта.
 */
 var extend = function () {
    var result = {};

    for (var i = 0; i < arguments.length; i++) {
        var obj = arguments[i];

        if (obj) {
            for (var key in obj) {
                if (has.call(obj, key)) {
                    var value = obj[key];

                    if (Array.isArray(value)) {
                        result[key] = value.slice();
                    } else if (typeof value === 'object' && value !== null) {
                        result[key] = extend(result[key], value);
                    } else {
                        result[key] = value;
                    }
                }
            }
        }
    }

    return result;
};

/**
 * Класс для создания кнопки сворачивания.
 * @param {Object} config - настройки кнопки сворачивания.
 * @returns - возвращает пустой объект.
 */
function SectionToggle (config) {
    // настройки по умолчанию
    var defaultConfig = {
        button: {
            id: null,
            titleCollapsed: '',
            titleExpanded: ''
        },
        collapsed: false,
        collapsedClassName: 'collapsed',
        container: '',
        cookie: {
            enabled: false,
            name: 'sectionToggle'
        },
        enabled: true,
        handlers: {
            onCollapse: [],
            onExpand: []
        },
        themeOptions: {
            additionalVars: null,
            enabled: false,
            optionName: '',
            sessionId: '',
            sessionVar: '',
            themeId: null
        }
    };

    this.config = extend(defaultConfig, config || {}); // переопределяем настройки по умолчанию
    this.cookie = null; // объект для работы с Cookie
    this.collapsed = false; // состояние по умолчанию - "развернуто"
    this.button = null; // ссылка на кнопку, щелчок по которой сворачивает и разворачивает блок на странице
    this.container = null; // ссылка на узел `DOM`, который будем сворачивать и разворачивать

    /**
     * Переключает состояние блока и кнопки.
     * @param {boolean} collapse - целевое состояние; если `true` - блок сворачивается, `false` - разворачивается.
     * @param {boolean} isUserAction - признак того, что действие произвел пользователь, а не процесс инициализации.
     */
     this.changeState = function (collapse, isUserAction) {
        // если это пользовательское действие
        if (isUserAction) {
            // выбираем пользовательские обработчики события в зависимости от целевого состояния
            var handlers = collapse ? this.config.handlers.onCollapse : this.config.handlers.onExpand;

            // вызываем все обработчики нужного события по очереди
            for (var i = 0; i < handlers.length; i++) {
                handlers[i]();
            }
        }

        if (collapse) {
            // если сворачиваем, то
            // изменяем внешний вид кнопки (добавляя `css`-класс)
            this.button.classList.add(this.config.collapsedClassName);
            // и меняем подпись к ней
            this.button.title = this.config.button.titleCollapsed;
        } else {
            // если разворачиваем, то
            // изменяем внешний вид кнопки (удаляя `css`-класс)
            this.button.classList.remove(this.config.collapsedClassName);
            // и меняем подпись к ней
            this.button.title = this.config.button.titleExpanded;
        }

        
        // скрываем или показываем блок в зависимости от действия
        this.container.style.display = collapse ? 'none' : '';

        // если использование Cookie включено, запоминаем новое состояние в Cookie
        if (this.config.cookie.enabled) {
            this.cookie.set(this.config.cookie.name, collapse ? '1' : '0');
        }

        // для запоминания состояния сворачиваемого блока для авторизованных пользователей
        // используется БД, а не Cookie
        if (isUserAction && this.config.themeOptions.enabled) {
            smf_setThemeOption(
                this.config.themeOptions.optionName, 
                collapse ? '1' : '0',
                (this.config.themeOptions.themeId || null),
                this.config.themeOptions.sessionId,
                this.config.themeOptions.sessionVar,
                (this.config.themeOptions.additionalVars || null)
            );
        }

        // после того, как все дополнительные действия совершены, обновляем состояние
        this.collapsed = collapse;
    };

    /**
     * Обработчик щелчка по кнопке сворачивания-разворачивания блока.
     */
    this.handleClick = function () {
        this.changeState(!this.collapsed, true);
    };

    if (this.config.enabled) {
        // если использование Cookie включено, актуальное состояние берется оттуда;
        // Cookie используются для неавторизованных пользователей
        if (this.config.cookie.enabled) {
            this.cookie = new smc_Cookie({});

            var cookieValue = this.cookie.get(this.config.cookie.name);

            this.collapsed = cookieValue !== null && cookieValue === '1';
        } else {
            this.collapsed = this.config.collapsed;
        }

        // получаем ссылку на кнопку сворачивания-разворачивания
        if (this.config.button && this.config.button.id) {
            this.button = document.querySelector('#' + this.config.button.id);
        }

        // получаем ссылку на узел `DOM`, который будем сворачивать и разворачивать
        if (this.config.container) {
            this.container = document.querySelector('#' + this.config.container);
        }

        // если кнопка найдена, показываем ее и добавляем к ней обработчик события щелчка
        if (this.container && this.button) {
            this.button.style.display = 'block';
            this.button.addEventListener('click', this.handleClick.bind(this));
        }

        // если в конфигурации явно указано, что начальное состояние - "свернуто", сворачиваем
        if (this.collapsed) {
            this.changeState(true, false);
        }
    }

    return {};
}