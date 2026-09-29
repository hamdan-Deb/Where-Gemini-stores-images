# Google Gemini Data Handling

## Scope

This document records data-handling details that Google publishes for Gemini APIs and Gemini consumer products. It does not attempt to describe Google's complete internal backend.

## Gemini Files API

Google's Gemini Files API documentation says that uploaded files are automatically deleted after 48 hours.

That statement applies to the Files API workflow. It should not be used as a universal retention period for every Gemini product.

## Gemini consumer products

Google's Gemini Apps Privacy Hub describes separate activity and retention controls for consumer use. The settings can affect how long conversations and shared content are kept.

For the research, these settings are kept separate from the Files API because they are different product mechanisms.

## Nano Banana

Google currently maps:

- Nano Banana to Gemini 2.5 Flash Image
- Nano Banana Pro to Gemini 3 Pro Image
- Nano Banana 2 to Gemini 3.1 Flash Image
- Nano Banana 2 Lite to Gemini 3.1 Flash-Lite Image

The same model family can be exposed through different products. Model identity alone does not identify the storage or network path used for a specific request.

## What public documentation does not show

Public documentation does not provide a complete diagram of all internal services involved in a Gemini consumer request.

This repository therefore avoids presenting an imagined backend as confirmed architecture.
