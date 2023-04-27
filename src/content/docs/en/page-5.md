---
title: "Architecture"
description: "AgencyAI Architecture"
---

AgencyAI employs a number of containers running on a Kubernetes cluster. The application is not limited to
Kubernetes, however Kubernetes is the curreny deployment environment.

The application consists of a React SPA front-end, and an API back-end, which integrates with various API
services including OpenAI.

A PostgreSQL database is used to store generated content and metadata.

![AgencyAI Architecture](/assets/agency-architecture.png)
