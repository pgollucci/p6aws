p6_aws_inspector_assessment_runs_list() {

    p6_run_read_cmd aws inspector list-assessment-runs "$@"
}
