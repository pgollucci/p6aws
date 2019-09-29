######################################################################
#<
#
# Function:
#      = p6_aws_glue_trigger_create(name, type, actions)
#
# Arg(s):
#    name - 
#    type - 
#    actions - 
#
#
#>
######################################################################
p6_aws_glue_trigger_create() {
    local name="$1"
    local type="$2"
    local actions="$3"
    shift 3

    p6_run_write_cmd aws glue create-trigger --name $name --type $type --actions $actions "$@"
}