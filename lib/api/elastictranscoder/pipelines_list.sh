######################################################################
#<
#
# Function:
#      = p6_aws_elastictranscoder_pipelines_list()
#
#
#
#>
######################################################################
p6_aws_elastictranscoder_pipelines_list() {

    p6_run_read_cmd aws elastictranscoder list-pipelines "$@"
}