p6_aws_codepipeline_pipelines_list() {

    p6_run_read_cmd aws codepipeline list-pipelines "$@"
}
