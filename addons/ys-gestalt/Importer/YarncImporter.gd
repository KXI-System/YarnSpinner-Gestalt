tool
extends EditorImportPlugin

func get_importer_name():
    return "yarnspinner.yarnc"

func get_visible_name():
    return "Yarn Program"

func get_recognized_extensions():
    return ["yarnc"]

func get_save_extension():
    return "res"

func get_resource_type():
    return "Resource"

func get_preset_count():
    return 0

func get_import_options(preset):
    return []

func import(source_file, save_path, options, r_platform_variants, r_gen_files):
    var file = File.new()
    var err = file.open(source_file, File.READ)
    if err != OK:
        return err

    var content = file.get_buffer(file.get_len())
    file.close()

    var yarnFile = YarnFile.new()
    yarnFile.data = content

    return ResourceSaver.save("%s.%s" % [save_path, get_save_extension()], yarnFile) 
