######################################################################
#<
#
# Function:
#      = p6_aws_discovery_import_task_start(name, import_url)
#
# Arg(s):
#    name - 
#    import_url - 
#
#
#>
######################################################################
p6_aws_discovery_import_task_start() {
    local name="$1"
    local import_url="$2"
    shift 2

    p6_run_write_cmd aws discovery start-import-task --name $name --import-url $import_url "$@"
}