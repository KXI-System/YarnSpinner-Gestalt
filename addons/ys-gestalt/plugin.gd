tool
extends EditorPlugin

var yarnImporter
var yarncImporter
var yarnLineImporter
var yarnMDImporter
var ypInspectorPlugin

func _enter_tree():
	yarnImporter = preload("Importer/YarnImporter.gd").new()
	yarncImporter = preload("Importer/YarncImporter.gd").new()
	yarnLineImporter = preload("Importer/YarnLineImporter.gd").new()
	yarnMDImporter = preload("Importer/YarnMetadataImporter.gd").new()
	ypInspectorPlugin = preload("Editor/YarnProjectInspectorPlugin.gd").new()

	add_import_plugin(yarnImporter)
	add_import_plugin(yarncImporter)
	add_import_plugin(yarnLineImporter)
	add_import_plugin(yarnMDImporter)
	add_inspector_plugin(ypInspectorPlugin)

func _exit_tree():
	remove_import_plugin(yarnImporter)
	remove_export_plugin(yarncImporter)
	remove_import_plugin(yarnLineImporter)
	remove_import_plugin(yarnMDImporter)
	remove_import_plugin(ypInspectorPlugin)

	yarnImporter = null
	yarncImporter = null
