---
title: "Architecture"
description: "AgencyAI Architecture"
---

AgencyAI employs a number of containers running on a Kubernetes cluster. The application is not limited to
Kubernetes, however Kubernetes is the curreny deployment environment.

The application consists of a React SPA front-end, and an API back-end, which integrates with various API
services including OpenAI.

A PostgreSQL database is used to store generated content and metadata.

Keycloak is used as an Identity Management and Authentication Server. Keycloak can support Single Sign-on,
federating login to the organisation's own Identity Management Server such as Azure AD.

Keycloak also generated the bearer tokens for API authentication between the front-end and the back-end.

![AgencyAI Architecture](/assets/agency-architecture.png)

The App integrates with the Canto Digital Asset Management System (DAM) in the following ways:

- Users can browse or search for images using the web user interface.
- Relevant images can be found for content by using the GPT model to automatically extract keywords
  from selected content and then submit these to Canto's Search API.
- An existing image can be selected from Canto for the GPT model to create a new variation of that
  image.
- Generated images can be saved to a Canto Album.
