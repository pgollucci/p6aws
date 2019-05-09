p6_aws_codepipeline_webhook_with_third_party_deregister() {

    p6_run_write_cmd aws codepipeline deregister-webhook-with-third-party "$@"
}
