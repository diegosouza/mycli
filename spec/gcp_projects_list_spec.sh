Describe 'gcp_projects_list_command.sh'

    It 'passes all the parameters to gcloud'
        gcloud() {
            @gcloud "$@"
        }
        When run source ./cli gcp projects list
        The output should eq "gcloud projects list" 
    End
 
    It 'validates output'
        When run source ./cli gcp projects list
        The output should include "PROJECT_ID     NAME    PROJECT_NUMBER" 
    End
End
