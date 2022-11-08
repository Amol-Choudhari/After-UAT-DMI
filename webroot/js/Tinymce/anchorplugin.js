/**
 * Copyright (c) Tiny Technologies, Inc. All rights reserved.
 */
!function() {
    "use strict";
    function a(e) {
        return e.getAttribute("id") || e.getAttribute("name") || ""
    }
    function c(e) {
        return e && "a" === e.nodeName.toLowerCase() && !e.getAttribute("href") && "" !== a(e)
    }
    function d(e) {
        return e.dom.getParent(e.selection.getStart(), l)
    }
    function r(e, t) {
        var o, a, n, r, i, l = d(e);
        l ? (n = e,
        r = t,
        (i = l).removeAttribute("name"),
        i.id = r,
        n.addVisual(),
        n.undoManager.add()) : (a = t,
        (o = e).undoManager.transact(function() {
            var e, n;
            o.getParam("allow_html_in_named_anchor", !1, "boolean") || o.selection.collapse(!0),
            o.selection.isCollapsed() ? o.insertContent(o.dom.createHTML("a", {
                id: a
            })) : (n = (e = o).dom,
            u(n).walk(e.selection.getRng(), function(e) {
                s.each(e, function(e) {
                    var t;
                    c(t = e) && !t.firstChild && n.remove(e, !1)
                })
            }),
            o.formatter.remove("namedAnchor", null, null, !0),
            o.formatter.apply("namedAnchor", {
                value: a
            }),
            o.addVisual())
        })),
        e.focus()
    }
    function i(r) {
        return function(e) {
            for (var t, n = 0; n < e.length; n++) {
                var o = e[n]
                  , a = void 0;
                !(a = t = o) || a.attr("href") || !a.attr("id") && !a.attr("name") || t.firstChild || o.attr("contenteditable", r)
            }
        }
    }
    var e = tinymce.util.Tools.resolve("tinymce.PluginManager")
      , u = tinymce.util.Tools.resolve("tinymce.dom.RangeUtils")
      , s = tinymce.util.Tools.resolve("tinymce.util.Tools")
      , l = "a:not([href])";
    e.add("anchor", function(e) {
        var t, n, o;
        (t = e).on("PreInit", function() {
            t.parser.addNodeFilter("a", i("false")),
            t.serializer.addNodeFilter("a", i(null))
        }),
        (n = e).addCommand("mceAnchor", function() {
            var o, e, t;
            t = (e = d(o = n)) ? a(e) : "",
            o.windowManager.open({
                title: "Anchor",
                size: "normal",
                body: {
                    type: "panel",
                    items: [{
                        name: "id",
                        type: "input",
                        label: "ID",
                        placeholder: "example"
                    }]
                },
                buttons: [{
                    type: "cancel",
                    name: "cancel",
                    text: "Cancel"
                }, {
                    type: "submit",
                    name: "save",
                    text: "Save",
                    primary: !0
                }],
                initialData: {
                    id: t
                },
                onSubmit: function(e) {
                    var t = o
                      , n = e.getData().id;
                    (/^[A-Za-z][A-Za-z0-9\-:._]*$/.test(n) ? (r(t, n),
                    0) : (t.windowManager.alert("Id should start with a letter, followed only by letters, numbers, dashes, dots, colons or underscores."),
                    1)) || e.close()
                }
            })
        }),
        (o = e).ui.registry.addToggleButton("anchor", {
            icon: "bookmark",
            tooltip: "Anchor",
            onAction: function() {
                return o.execCommand("mceAnchor")
            },
            onSetup: function(e) {
                return o.selection.selectorChangedWithUnbind("a:not([href])", e.setActive).unbind
            }
        }),
        o.ui.registry.addMenuItem("anchor", {
            icon: "bookmark",
            text: "Anchor...",
            onAction: function() {
                return o.execCommand("mceAnchor")
            }
        }),
        e.on("PreInit", function() {
            e.formatter.register("namedAnchor", {
                inline: "a",
                selector: l,
                remove: "all",
                split: !0,
                deep: !0,
                attributes: {
                    id: "%value"
                },
                onmatch: c
            })
        })
    })
}();
