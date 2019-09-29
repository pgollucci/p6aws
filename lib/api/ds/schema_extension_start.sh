######################################################################
#<
#
# Function:
#      = p6_aws_ds_schema_extension_start(directory_id, create_snapshot_before_schema_extension, ldif_content, description)
#
# Arg(s):
#    directory_id - 
#    create_snapshot_before_schema_extension - 
#    ldif_content - 
#    description - 
#
#
#>
######################################################################
p6_aws_ds_schema_extension_start() {
    local directory_id="$1"
    local create_snapshot_before_schema_extension="$2"
    local ldif_content="$3"
    local description="$4"
    shift 4

    p6_run_write_cmd aws ds start-schema-extension --directory-id $directory_id --create-snapshot-before-schema-extension $create_snapshot_before_schema_extension --ldif-content $ldif_content --description $description "$@"
}