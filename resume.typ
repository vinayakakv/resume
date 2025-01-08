#set document(
  author: "Vinayaka K V",
  title: "Vinayaka's Software Engineer Resume",
  keywords: ("Software Engineer", "Full Stack", "React", "TypeScript", "JavaScript", "Java", "Backend", "System Architecture", "Redis", "Kubernetes", "AWS", "GCP", "Terraform")
)

#set page(
  paper: "a4",
  margin: 0.712in,
)

#set text(
  font: "IBM Plex Sans",
  size: 10pt,
  lang: "en",
)

#show heading: set text(font: "IBM Plex Serif")

#show link: it => text(underline(it))

#show heading.where(level: 1): set text(size: 24pt, weight: 800, font: "IBM Plex Mono")
#show heading.where(level: 2): set text(size: 16pt, weight: 600)
#show heading.where(level: 3): set text(size: 12pt, weight: 500)
#show strong: set text(weight: 300)

#show list.item: it => {
  if not it.body.has("children") or not it.body.children.contains([:]) {
    return it
  }
  let line = it.body.children.split([:])
  let heading = line.at(0).join()
  let body = line.at(1).join()
  list([#strong(heading): #body])
}

#show heading.where(level: 3): it => {
  if not it.body.has("children") or not it.body.children.contains([=]) {
    return it
  }
  let line = it.body.children.split([=])
  let company = line.at(0).join()
  let years = line.at(1).join()
  grid(columns: 2, gutter: 1fr, company, years)
}

#let contacts = (
  (
    link: "https://linkedin.com/in/vinayakakv",
    display: "linkedin.com/in/vinayakakv"
  ),
  (
    link: "https://github.com/vinayakakv",
    display: "github.com/vinayakakv"
  ),
  (
    link: "https://vinayakakv.com",
    display: "vinayakakv.com"
  ),
  (
    link: "mailto:me.vinayakakv@gmail.com",
    display: "me.vinayakakv@gmail.com"
  ),
  (
    link: "tel:+919113686752",
    display: "+91 91136 86752"
  ),
)

= Vinayaka K V
== Full Stack Software Engineer

#text(
  size: 8.97pt, 
  contacts.map(contact => link(
    contact.link,
    contact.display
  )).join([ | ])
)


#quote[
Senior Software Engineer with 3+ years of experience in Full Stack Design and Development, focused on driving projects through all stages -- from research and architecture to deployment -- while enhancing developer experience (DX) and ensuring fast, high-quality delivery. Passionate about building scalable solutions and mentoring teams to innovate and excel.
]

== Tools and Technologies

- Languages: JavaScript, TypeScript, Kotlin, Python, SQL
- Backend: Node.js, Kotlin, RESTful APIs, RabbitMQ, Prisma ORM
- Cloud and DevOps: AWS, GCP, Pulumi, Terraform, Kubernetes, Docker, FluxCD, Jenkins, GitLab CI/CD
- Frontend: React, Vue, GraphQL Clients
- Data Management: PostgreSQL, Redis, Clickhouse, BigQuery, ScyllaDB (Cassandra)
- AI & ML: OpenAI and Google LLMs (GPTs and Gemini), CLIP Embedding, Vector Search
- Version Control: Git
- Collaboration Tools: Jira, Confluence, Notion, Slack
- AI Tools: ChatGPT, V0, Cursor, Perplexity

== Professional Experience

=== Senior Software Engineer, True Fit Corporation = Feb 2024 - Present

- FIG - Client-Side Data Collection Platform: Designed and implemented a JavaScript-based client-side data collection platform to gather real-time data on product availability and attributes from product pages. Achieved deduplication on \~5M events per day using Redis Bloom filters, ensuring accurate and timely data insights.
- Embeddable Chatbot for Product Search: Developed an embeddable chat-based personalized product search experience powered by OpenAI GPT-4o, Clickhouse Vector Search, and the CLIP multi-modal embedding model. Employed rank fusion techniques to enhance search relevance and user engagement.
- LLM-Driven Data Transformation: Developed data transformation processes using LLMs (OpenAI GPT, Gemini) to extract size charts and taxonomy from product data, reducing manual mapping to a review-only process.
- Multi-Dimensional Recommendations:  Core contributor to the design and development of a size and fit recommendation engine that takes into account various product dimensions, including material and fit. Utilized tensor-based matrix libraries in Node.js for efficient computations, and ScyllaDB for fast, horizontally scalable data access.
- FluxCD for Kubernetes Deployments: Integrated FluxCD in a GitOps model, replacing custom scripts, to simplify Kubernetes deployments, improving reliability and reducing deployment time from weeks to just one day.
- Mentorship and Code Quality: Mentored junior developers by providing guidance, feedback, and support, and conducted regular code reviews to maintain code quality and adherence to best practices. Assisted in onboarding new developers, ensuring a smooth transition into the team and fostering a culture of continuous learning and improvement.
- On-Call Support and Incident Management: Actively participated in on-call rotations, providing support and resolving production issues swiftly. Led escalation fixes in a _Kaizen_ manner to ensure that the issues won't repeat.

=== Software Engineer, True Fit Corporation = Jun 2022 - Feb 2024

- Project Connect - Data Onboarding Platform: Core contributor to Project Connect, a data onboarding platform allowing users to define mapping rules and filters for incoming customer data. This innovation reduced the onboarding timeline from 2-3 weeks to approximately 30 minutes, eliminating the need for intermediate databases and custom shell scripts or SQL for each customer.
- Webhook Integration for Returns: Designed and implemented a webhook integration with Loop Returns, enabling the real-time receipt of return data. Leveraging the foundations of Project Connect, this solution provided a seamless onboarding experience requiring only a shared secret, streamlining the process significantly.
- Shopify App Implementation: Led the rapid development of a Shopify app for True Fit using a Node.js + TypeScript backend, React frontend, and GKE infrastructure. Expanded market reach to SMEs, increased the customer base from hundreds to thousands, and reduced onboarding time from 3-4 months to 5 minutes.
- Developer Tooling and Experience: Enhanced developer productivity by implementing local development environments for real-time feedback and organizing code with monorepos for easier artifact sharing and maintenance.
- Infrastructure Contributions: Contributed to the creation and management of Jenkins jobs for ad-hoc tasks. Implemented Terraform modules for efficient log routing to BigQuery and IP reservations. Additionally, deployed several critical services in Kubernetes (K8s) infrastructure, ensuring scalable and reliable service operation.

=== Software Engineer, Mainteney AS = Aug 2021 - Apr 2022

- Infrastructure as Code Migration: Led the successful migration of the company's entire AWS infrastructure -- including VPC, RDS, EKS, Lambda, Route53, and S3—to Infrastructure as Code using Pulumi and TypeScript. The migration was executed with zero downtime, ensuring seamless continuity for the business operations.
- Automated Data Onboarding Tool: Developed a robust and configurable Node.js script for onboarding customer data onto the platform. This tool streamlined the process, eliminating the need for custom logic for each customer, significantly reducing the time and effort required for onboarding.
- Full-Stack Development: Contributed to both frontend and backend development across the stack. Played a key role in UI design review and implementation of specific features using React, and supported backend services written in Kotlin.
- CI/CD Pipeline Optimization: Spearheaded the configuration and optimization of CI/CD pipelines in GitLab for multiple projects, including infrastructure projects. Enabled the ability to preview and apply infrastructure changes through a merge process, enhancing the efficiency and reliability of deployments.
- Cross-Functional Collaboration: Worked closely with the CTO and other software developers to design, build, and deploy these projects. Facilitated open communication and regular feedback loops, ensuring alignment with company goals and technical standards.

== Education

=== National Institute of Technology Karnataka (NITK), Surathkal =  2019 - 2021
*_Master of Technology by Research in Information Technology_*

Focused on research involving the application of Graph Neural Networks for identifying Android malware. Developed and utilized graph features extracted through Static Analysis, such as Function Call Graphs, to enhance malware detection techniques.

=== Shri Jayachamarajendra College of Engineering (SJCE), Mysuru =  2015 - 2019
*_Bachelor of Engineering in Computer Science and Engineering_*

Completed coursework in key areas such as Algorithms, Data Structures, Operating Systems, and Database Management Systems, along with electives like Digital Image Processing and Game Theory.

// == Awards & Recognitions

// === "True Innovation" Award at True Fit Corporation = 2023
// Recognized for significant contributions to the Shopify project, leading to its rapid delivery and substantial growth in the customer base.