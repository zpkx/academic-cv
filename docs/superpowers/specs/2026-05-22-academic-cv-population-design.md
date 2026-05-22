# Academic CV Population — Design Spec

**Date**: 2026-05-22
**Source**: Peng Zhang resume markdown files (EN + CN)

## Goal

Populate the HugoBlox Academic CV site with Peng Zhang's resume content, supporting both English and Chinese via Hugo's multi-language system.

## Scope

Three pages: Bio (home), Experience, Projects. Bilingual (en + zh). Remove sample content.

## Files to Modify

| File | Action |
|------|--------|
| `config/_default/languages.yaml` | Enable `zh` language section |
| `config/_default/hugo.yaml` | `hasCJKLanguage: true`, update `baseURL` |
| `config/_default/params.yaml` | Update site identity (name, description) |
| `config/_default/menus.yaml` | Update nav menu items (simplify to Bio/Experience/Projects) |
| `content/authors/me/_index.md` | **New** — author profile (name, bio, education, interests, skills, awards, languages, contact, avatar) |
| `content/authors/me/avatar.jpg` | **New** — copy from user-provided photo (TBD) |
| `content/en/_index.md` | English homepage (bio block + markdown intro) |
| `content/zh/_index.md` | Chinese homepage |
| `content/en/experience.md` | **New** — English experience page |
| `content/zh/experience.md` | **New** — Chinese experience page |
| `content/en/projects/_index.md` | **New** — English projects listing |
| `content/zh/projects/_index.md` | **New** — Chinese projects listing |
| `static/uploads/resume.pdf` | Copy `Peng_Zhang_resume_cn_2026_python.pdf` |

## Files to Remove

All sample content under:
- `content/blog/`
- `content/courses/`
- `content/events/`
- `content/publications/`
- `content/projects/` (replace with real content)
- `content/slides/`
- Remove `content/_index.md` and `content/experience.md` (moved under `en/` and `zh/`)

## Content Mapping

| Resume section | HugoBlox block |
|---|---|
| Name, summary, education, certs, languages | `authors/me/_index.md` |
| Work experience | `resume-experience` block |
| Technical skills | `resume-skills` block |
| Certifications | `resume-awards` block |
| Languages | `resume-languages` block |
| Selected Projects + Side Projects | Projects collection page |
| PDF CV | `static/uploads/resume.pdf` |

## Navigation

- Bio (`/`)
- Experience (`/experience/`)
- Projects (`/projects/`)

## Out of Scope

- Photo/avatar (user to provide separately)
- Custom domain / GitHub Pages deployment config
- Publications, Talks, Blog sections
