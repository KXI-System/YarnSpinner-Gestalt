extends Resource
class_name YarnProjectCompiled

export(Resource) var yarnCompiledProgram
export(Resource) var yarnStringTable
export(Resource) var yarnLineMetadata

var compiledProgram : PoolByteArray
var stringTable : String
var lineMetadata : String

func getCompiledProgram():
    return yarnCompiledProgram.data

func getStringTable():
    return yarnStringTable.data

func getLineMetadata():
    return yarnLineMetadata.data
