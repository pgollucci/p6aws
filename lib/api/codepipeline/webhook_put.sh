######################################################################
#<
#
# Function:
#	p6_aws_codepipeline_webhook_put(webhook)
#
#  Args:
#	webhook - 
#
#>
######################################################################
p6_aws_codepipeline_webhook_put() {
    local webhook="$1"
    shift 1

    p6_run_write_cmd aws codepipeline put-webhook --webhook $webhook "$@"
}