# Inventory Master
Developer: Caira Major

Framework: Flutter / Dart

Backend: Google Cloud Firestore

# Project Objective
The goal of this application is to provide a high-performance, real-time inventory management system. It leverages a decoupled architecture to sync local state with a cloud-hosted NoSQL database, ensuring data integrity and immediate updates across all connected clients.

# Enhanced Features 
1. Visual Low-Stock Alert System
Functionality: The application monitors inventory levels in real-time. Any item with a quantity of less than 5 units automatically triggers a "Warning" state.

Visual Feedback: Affected items display a red warning icon and bold red text for the quantity count, while stable stock items remain green/blue.

Impact: This provides immediate "at-a-glance" situational awareness, allowing managers to prioritize reordering without scanning individual numbers.

2. Real-Time Inventory Summary Dashboard
Functionality: A dynamic header at the top of the main screen tracks the Total Unique Items currently stored in the Firestore collection.

Technical Implementation: This uses StreamBuilder logic to aggregate the length of the data list. As items are added or deleted, the counter updates instantly.

Impact: This gives the "Orchestrator" a high-level view of the entire catalog size without needing to scroll through long lists.

# Tech Stack & Architecture
Frontend: Flutter 

Backend: Firebase Firestore 

item.dart: Data Modeling with toMap and fromMap.

database_service.dart: CRUD logic and Stream management.

main.dart: UI rendering and Stream subscription.