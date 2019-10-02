######################################################################
#<
#
# Function:
#	p6_aws_elastictranscoder_presets_list()
#
#>
######################################################################
p6_aws_elastictranscoder_presets_list() {

    p6_run_read_cmd aws elastictranscoder list-presets "$@"
}