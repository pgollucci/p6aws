######################################################################
#<
#
# Function:
#      = p6_aws_glue_trigger_stop(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_glue_trigger_stop() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue stop-trigger --name $name "$@"
}