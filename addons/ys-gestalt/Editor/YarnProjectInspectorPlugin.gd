extends EditorInspectorPlugin

var YarnProjectEditor = preload("YarnProjectEditor.gd") 

func can_handle(object):
    var test = object as YarnProject
    return test != null

func parse_begin(object):
    var editor = YarnProjectEditor.new()
    editor.targetProject = object # this isn't how that works
    add_custom_control(editor)
