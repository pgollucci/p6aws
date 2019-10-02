######################################################################
#<
#
# Function:
#	p6_aws_ses_template_update(template)
#
#  Args:
#	template - 
#
#>
######################################################################
p6_aws_ses_template_update() {
    local template="$1"
    shift 1

    p6_run_write_cmd aws ses update-template --template $template "$@"
}