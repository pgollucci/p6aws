######################################################################
#<
#
# Function:
#      = p6_aws_elastictranscoder_pipeline_notifications_update(id, notifications)
#
# Arg(s):
#    id - 
#    notifications - 
#
#
#>
######################################################################
p6_aws_elastictranscoder_pipeline_notifications_update() {
    local id="$1"
    local notifications="$2"
    shift 2

    p6_run_write_cmd aws elastictranscoder update-pipeline-notifications --id $id --notifications $notifications "$@"
}