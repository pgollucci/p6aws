######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_webhook_delete(name)
#
# Arg(s):
#    name - 
#
#
#>
######################################################################
p6_aws_codepipeline_webhook_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws codepipeline delete-webhook --name $name "$@"
}