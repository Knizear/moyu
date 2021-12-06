(function ($) {
    $.learuntab = {
        calSumWidth: function (element) {
            var width = 0;
            $(element).each(function () {
                width += $(this).outerWidth(true);
            });
            return width;
        },
        init: function () {},
    };
    $.learunindex = {
        load: function () {
            $("body").removeClass("hold-transition");
            $("#content-wrapper")
                .find(".mainContent")
                .height($(window).height() - 100);
            $(window).resize(function (e) {
                $("#content-wrapper")
                    .find(".mainContent")
                    .height($(window).height() - 100);
            });
            $(".sidebar-toggle").click(function () {
                if (!$("body").hasClass("sidebar-collapse")) {
                    $("body").addClass("sidebar-collapse");
                } else {
                    $("body").removeClass("sidebar-collapse");
                }
            });
            $(window).load(function () {
                window.setTimeout(function () {
                    $("#ajax-loader").fadeOut();
                }, 300);
            });
        },
        jsonWhere: function (data, action) {
            if (action == null) return;
            var reval = new Array();
            $(data).each(function (i, v) {
                if (action(v)) {
                    reval.push(v);
                }
            });
            return reval;
        },
        loadMenu: function () {
            $("#sidebar-menu li a").click(function () {
                var d = $(this),
                    e = d.next();
                if (e.is(".treeview-menu") && e.is(":visible")) {
                    e.slideUp(100, function () {
                        e.removeClass("menu-open");
                    }),
                        e.parent("li").removeClass("active");
                } else if (e.is(".treeview-menu") && !e.is(":visible")) {
                    var f = d.parents("ul").first(),
                        g = f.find("ul:visible").slideUp(100);
                    g.removeClass("menu-open");
                    var h = d.parent("li");
                    e.slideDown(100, function () {
                        e.addClass("menu-open"), f.find("li.active").removeClass("active"), h.addClass("active");

                        var _height1 = $(window).height() - $("#sidebar-menu >li.active").position().top - 41;
                        var _height2 = $("#sidebar-menu li > ul.menu-open").height() + 10;
                        if (_height2 > _height1) {
                            $("#sidebar-menu >li > ul.menu-open").css({
                                overflow: "auto",
                                height: _height1,
                            });
                        }
                    });
                }
                e.is(".treeview-menu");
            });
        },
    };
    $(function () {
        $.learunindex.load();
        $.learunindex.loadMenu();
        $.learuntab.init();
    });
})(jQuery);
