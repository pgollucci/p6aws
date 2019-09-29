######################################################################
#<
#
# Function:
#      = p6_aws_organizations_svc_su_un()
#
#
#
#>
######################################################################
p6_aws_organizations_svc_su_un() {

    p6_aws_sts_svc_role_unassume
}

######################################################################
#<
#
# Function:
#      = p6_aws_organizations_svc_su(account_alias, map_file, region, output, role_full_path, role_session_name, cred_file, src_cred_file, assumed_cred_file)
#
# Arg(s):
#    account_alias - 
#    map_file - 
#    region - 
#    output - 
#    role_full_path - 
#    role_session_name - 
#    cred_file - 
#    src_cred_file - 
#    assumed_cred_file - 
#
#
#>
######################################################################
p6_aws_organizations_svc_su() {

}

######################################################################
#<
#
# Function:
#      = p6_aws_organizations_svc_run_as(account_alias, account_map, region, output, role_name, role_session_name, cred_file, src_cred_file, assumed_cred_file, cmd)
#
# Arg(s):
#    account_alias - 
#    account_map - 
#    region - 
#    output - 
#    role_name - 
#    role_session_name - 
#    cred_file - 
#    src_cred_file - 
#    assumed_cred_file - 
#    cmd - 
#
#
#>
######################################################################
p6_aws_organizations_svc_run_as() {

    p6_aws_organizations_svc_su

    p6_run_x_cmd

    p6_aws_organizations_svc_su_un
}