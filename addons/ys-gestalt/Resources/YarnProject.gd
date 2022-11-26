extends Resource
class_name YarnProject

export(Array, Resource) var yarnFiles

var compiledProgram : PoolByteArray
var stringTable : String
var lineMetadata : String

func _init(p_yarnFiles = []):
	yarnFiles = p_yarnFiles

# func compileProgram():
# 	var yarnCompiler = load("res://addons/ys-gestalt/YarnCompiler.cs")
# 	yarnCompiler.CompileYarnProgram();
