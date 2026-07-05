flowchart TB

    Users[Global Employees / Partners]

    DNS[Cloud DNS]

    LB[Global External HTTPS Load Balancer]

    Armor[Cloud Armor]

    CDN[Cloud CDN]

    APIGW[AI Gateway API<br/>Cloud Run]

    GKE[GKE AI Platform<br/>Private Cluster]

    PSC[Private Service Connect]

    Vertex[Vertex AI]

    Storage[Cloud Storage]

    SQL[(Regional Database)]

    Secret[Secret Manager]

    KMS[Cloud KMS CMEK]

    NAT[Cloud NAT]

    PGA[Private Google Access]

    GitHub[GitHub Actions]

    AR[Artifact Registry]

    Users --> DNS

    DNS --> LB

    LB --> Armor

    Armor --> CDN

    CDN --> APIGW

    APIGW --> GKE

    APIGW --> Vertex

    GKE --> PSC

    PSC --> Vertex

    GKE --> SQL

    GKE --> Storage

    GKE --> Secret

    Secret --> KMS

    GKE --> NAT

    GKE --> PGA

    GitHub --> AR

    AR --> GKE