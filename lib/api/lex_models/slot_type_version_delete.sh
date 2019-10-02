######################################################################
#<
#
# Function:
#	p6_aws_lex_models_slot_type_version_delete(name, slot_type_version)
#
#  Args:
#	name - 
#	slot_type_version - 
#
#>
######################################################################
p6_aws_lex_models_slot_type_version_delete() {
    local name="$1"
    local slot_type_version="$2"
    shift 2

    p6_run_write_cmd aws lex-models delete-slot-type-version --name $name --slot-type-version $slot_type_version "$@"
}