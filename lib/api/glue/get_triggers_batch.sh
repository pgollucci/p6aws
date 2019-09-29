######################################################################
#<
#
# Function:
#      = p6_aws_glue_get_triggers_batch(trigger_names)
#
# Arg(s):
#    trigger_names - 
#
#
#>
######################################################################
p6_aws_glue_get_triggers_batch() {
    local trigger_names="$1"
    shift 1

    p6_run_read_cmd aws glue batch-get-triggers --trigger-names $trigger_names "$@"
}