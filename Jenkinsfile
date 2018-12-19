pipeline
{
    agent
    {
        any
    }
    options
    {
        timeout(6, HOURS)
    }
    environment
    {
        GIT_COMMITTER_NAME = ‘Hareesh Arava’
    }
    stages
    {
        stage("1. Checkout")
        {
            git credentialsId: 'Git-credentials', url: 'https://github.com/ha04259/pebble.git'
        }
        stage("2. Maven Goal:1")
        {
           sh mvn clean install
        }
        stage("3. Maven Goal:2")
        {
           sh mvn verify 
        }
        stage("4. Maven Goal:1")
        {
            echo deploy stage need to be execute
        }
        stage("5. Static code analysis")
        {
            
        }
        stage("6. Image preparation")
        {
            
        }
        stage("6. Image pushing")
        {
            
        }
    }
}
