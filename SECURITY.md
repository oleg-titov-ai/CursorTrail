# Security Policy

## Scope

CursorTrail is a local macOS utility. It should remain lightweight, local-first, and free from unnecessary network access.

## Security Principles

- no analytics;
- no accounts;
- no external API calls;
- no cloud synchronization;
- no credential storage;
- no tracking;
- local settings only.

## Sensitive Data

Do not commit:

- private screenshots;
- personal system logs;
- Apple Developer credentials;
- signing certificates;
- notarization credentials;
- private release artifacts.

## Reporting a Security Issue

Open a GitHub issue with a safe description of the problem. Do not attach private files, certificates, credentials, or screenshots containing personal information.

## Build and Release Notes

The current public version uses local ad-hoc signing during build. A production release should use a dedicated Apple Developer signing and notarization workflow without committing any private signing material.
