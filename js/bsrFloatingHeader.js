;(function ( $, window, undefined ) {
    
    var pluginName = 'bsrFloatingHeader',
        document = window.document,
        defaults = {
            //propertyName: "value"
        };

    function Plugin( element, options ) {
        this.element = element;
        this.options = $.extend( {}, defaults, options) ;
 
        this._defaults = defaults;
        this._name = pluginName;
        
        this.init();
    }

    Plugin.prototype.init = function () {
        // code goes here
        //console.log($(this.element).contents());
        var containerContents = $(this.element).html();
        $(this.element).html($("<div class='bsrFloatingInner' />").html(containerContents));
        //$(this.element).html().wrap("<div class='bsrFloatingInner' />");
    };

    $.fn[pluginName] = function ( options ) {
        return this.each(function () {
            if (!$.data(this, 'plugin_' + pluginName)) {
                $.data(this, 'plugin_' + pluginName, new Plugin( this, options ));
            }
        });
    };

}(jQuery, window));