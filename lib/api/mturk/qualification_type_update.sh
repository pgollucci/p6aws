######################################################################
#<
#
# Function:
#      = p6_aws_mturk_qualification_type_update(qualification_type_id)
#
# Arg(s):
#    qualification_type_id - 
#
#
#>
######################################################################
p6_aws_mturk_qualification_type_update() {
    local qualification_type_id="$1"
    shift 1

    p6_run_write_cmd aws mturk update-qualification-type --qualification-type-id $qualification_type_id "$@"
}