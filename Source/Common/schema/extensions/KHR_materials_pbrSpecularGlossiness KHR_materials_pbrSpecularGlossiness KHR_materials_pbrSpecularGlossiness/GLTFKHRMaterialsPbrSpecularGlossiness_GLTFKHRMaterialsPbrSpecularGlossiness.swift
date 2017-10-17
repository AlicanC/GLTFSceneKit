//
// GLTFKHRMaterialsPbrSpecularGlossiness_GLTFKHRMaterialsPbrSpecularGlossiness.swift
//

import Foundation
import SceneKit

struct GLTFKHRMaterialsPbrSpecularGlossiness_GLTFKHRMaterialsPbrSpecularGlossinessExtension: GLTFCodable {
  struct GLTFKHRMaterialsPbrSpecularGlossiness_GLTFKHRMaterialsPbrSpecularGlossiness: Codable {
    let _diffuseFactor: [Float]?
    var diffuseFactor: [Float] {
      get { return self._diffuseFactor ?? [1.0, 1.0, 1.0, 1.0] }
    }

    let _diffuseTexture: GLTFTextureInfo?
    var diffuseTexture: GLTFTextureInfo? {
      get { return self._diffuseTexture }
    }

    let _specularFactor: [Float]?
    var specularFactor: [Float] {
      get { return self._specularFactor ?? [1.0, 1.0, 1.0] }
    }

    let _glossinessFactor: Float?
    var glossinessFactor: Float {
      get { return self._glossinessFactor ?? 1.0 }
    }

    let _specularGlossinessTexture: GLTFTextureInfo?
    var specularGlossinessTexture: GLTFTextureInfo? {
      get { return self._specularGlossinessTexture }
    }

    private enum CodingKeys: String, CodingKey {
      case _diffuseFactor = "diffuseFactor"
      case _diffuseTexture = "diffuseTexture"
      case _specularFactor = "specularFactor"
      case _glossinessFactor = "glossinessFactor"
      case _specularGlossinessTexture = "specularGlossinessTexture"
    }
  }
  let data: GLTFKHRMaterialsPbrSpecularGlossiness_GLTFKHRMaterialsPbrSpecularGlossiness?

  enum CodingKeys: String, CodingKey {
    case data = "KHR_materials_pbrSpecularGlossiness"
  }

  /*
   init(from decoder: Decoder) throws {

   }
   */

  func didLoad(by object: Any, unarchiver: GLTFUnarchiver) {
    guard let data = self.data else { return }
    guard let material = object as? SCNMaterial else { return }

    if let diffuseTexture = data.diffuseTexture {
      try? unarchiver.setTexture(index: diffuseTexture.index, to: material.diffuse)
    }
  }
}



