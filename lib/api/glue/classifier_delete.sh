######################################################################
#<
#
# Function:
#	p6_aws_glue_classifier_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_glue_classifier_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws glue delete-classifier --name $name "$@"
}