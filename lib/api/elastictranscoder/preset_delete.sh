######################################################################
#<
#
# Function:
#      = p6_aws_elastictranscoder_preset_delete(id)
#
# Arg(s):
#    id - 
#
#
#>
######################################################################
p6_aws_elastictranscoder_preset_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws elastictranscoder delete-preset --id $id "$@"
}