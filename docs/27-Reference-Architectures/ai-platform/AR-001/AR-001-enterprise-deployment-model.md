                                Global Users
                                      │
                                      ▼
                               Cloud DNS
                                      │
                                      ▼
                   Global External HTTPS Load Balancer
                                      │
          ┌───────────────────────────┼───────────────────────────┐
          │                           │                           │
          ▼                           ▼                           ▼
     Europe Region               US Region                 APAC Region
     (Data Plane)               (Data Plane)              (Data Plane)

  Shared VPC Host           Shared VPC Host          Shared VPC Host
         │                         │                        │
         ▼                         ▼                        ▼
   Cloud Run API            Cloud Run API           Cloud Run API
         │                         │                        │
         ▼                         ▼                        ▼
 Private GKE Cluster      Private GKE Cluster     Private GKE Cluster
         │                         │                        │
         ▼                         ▼                        ▼
 AI Gateway               AI Gateway              AI Gateway
         │                         │                        │
         ▼                         ▼                        ▼
 Vertex AI                Vertex AI               Vertex AI
         │                         │                        │
         ▼                         ▼                        ▼
 Regional Database        Regional Database       Regional Database
         │                         │                        │
         ▼                         ▼                        ▼
 Cloud Storage            Cloud Storage           Cloud Storage