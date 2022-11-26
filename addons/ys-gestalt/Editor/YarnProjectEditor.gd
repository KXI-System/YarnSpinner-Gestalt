extends EditorProperty

export(Resource) var targetProject
var control = Button.new()
var updating = false

func _init():
    add_child(control)
    add_focusable(control)
    control.name = "Compile Button"
    control.text = "Compile Yarn Project"
    control.connect("pressed", self, "_on_button_pressed")

func _on_button_pressed():
    if (updating):
        return
    
    updating = true
    # targetProject.compiledProgram()
    updating = false
