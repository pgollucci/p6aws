######################################################################
#<
#
# Function:
#      = p6_aws_rds_db_security_group_ingress_revoke(db_security_group_name)
#
# Arg(s):
#    db_security_group_name - 
#
#
#>
######################################################################
p6_aws_rds_db_security_group_ingress_revoke() {
    local db_security_group_name="$1"
    shift 1

    p6_run_write_cmd aws rds revoke-db-security-group-ingress --db-security-group-name $db_security_group_name "$@"
}