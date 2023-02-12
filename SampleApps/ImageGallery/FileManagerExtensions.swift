//
//  FileManagerExtensions.swift
//  SampleApps
//
//  Created by Do-Young Choi on 2023/02/11.
//

import Foundation

extension FileManager {
    
    var documentDirectory: URL? {
//        return self.urls(for: .documentDirectory, in: .userDomainMask).first
        do {
             return try self.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
          }
          catch let error {
              fatalError("Unable to get the local documents url. Error: \(error)")
          }
    }
    
    func copyItemToDocumentDirectory(from sourceURL: URL) throws -> URL? {
        guard let documentDirectory = documentDirectory else { return nil }
        let fileName = sourceURL.lastPathComponent
        let destinationURL = documentDirectory.appendingPathComponent(fileName)
        
        if self.fileExists(atPath: destinationURL.path) {
            return destinationURL
        } else {
            try self.copyItem(at: sourceURL, to: destinationURL)
            return destinationURL
        }
    }
    
    func removeItemFromDocumentDirectory(url: URL) {
        guard let documentDirectory = documentDirectory else { return }
        let fileName = url.lastPathComponent
        let fileUrl = documentDirectory.appendingPathComponent(fileName)
        if self.fileExists(atPath: fileUrl.path) {
            do {
                try self.removeItem(at: url)
            } catch let error {
                print("Unable to remove file: \(error.localizedDescription)")
            }
        }
    }
    
    func getContentsOfDirectory(_ url: URL) -> [URL] {
        var isDirectory: ObjCBool = false
        // The URL must be a directory.
        guard FileManager.default.fileExists(atPath: url.path, isDirectory: &isDirectory), isDirectory.boolValue else { return [] }
        do {
            return try FileManager.default.contentsOfDirectory(at: url, includingPropertiesForKeys: nil)
        } catch let error {
            print("Unable to get directory contents: \(error.localizedDescription)")
        }
        return []
    }
}
