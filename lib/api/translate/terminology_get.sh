######################################################################
#<
#
# Function:
#	p6_aws_translate_terminology_get(name, terminology_data_format)
#
#  Args:
#	name - 
#	terminology_data_format - 
#
#>
######################################################################
p6_aws_translate_terminology_get() {
    local name="$1"
    local terminology_data_format="$2"
    shift 2

    p6_run_read_cmd aws translate get-terminology --name $name --terminology-data-format $terminology_data_format "$@"
}