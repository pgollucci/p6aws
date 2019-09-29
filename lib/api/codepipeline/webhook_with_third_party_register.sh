######################################################################
#<
#
# Function:
#      = p6_aws_codepipeline_webhook_with_third_party_register()
#
#
#
#>
######################################################################
p6_aws_codepipeline_webhook_with_third_party_register() {

    p6_run_write_cmd aws codepipeline register-webhook-with-third-party "$@"
}