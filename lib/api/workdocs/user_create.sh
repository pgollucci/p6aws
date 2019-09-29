######################################################################
#<
#
# Function:
#      = p6_aws_workdocs_user_create(username, given_name, surname, password)
#
# Arg(s):
#    username - 
#    given_name - 
#    surname - 
#    password - 
#
#
#>
######################################################################
p6_aws_workdocs_user_create() {
    local username="$1"
    local given_name="$2"
    local surname="$3"
    local password="$4"
    shift 4

    p6_run_write_cmd aws workdocs create-user --username $username --given-name $given_name --surname $surname --password $password "$@"
}