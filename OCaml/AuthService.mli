(*
 Autogenerated by Thrift Compiler (0.14.0)

 DO NOT EDIT UNLESS YOU ARE SURE YOU KNOW WHAT YOU ARE DOING
*)

open Thrift
open Line_types

class virtual iface :
object
  method virtual normalizePhoneNumber : string option -> string option -> string option -> string
  method virtual respondE2EELoginRequest : string option -> e2EEPublicKey option -> string option -> string option -> ErrorCode.t option -> unit
  method virtual confirmE2EELogin : string option -> string option -> string
  method virtual logoutZ : unit
  method virtual loginZ : loginRequest option -> loginResult
  method virtual issueTokenForAccountMigrationSettings : bool option -> securityCenterResult
  method virtual issueTokenForAccountMigration : string option -> securityCenterResult
  method virtual verifyQrcodeWithE2EE : string option -> string option -> ErrorCode.t option -> e2EEPublicKey option -> string option -> string option -> string
end

class client : Protocol.t -> Protocol.t -> 
object
  method normalizePhoneNumber : string -> string -> string -> string
  method respondE2EELoginRequest : string -> e2EEPublicKey -> string -> string -> ErrorCode.t -> unit
  method confirmE2EELogin : string -> string -> string
  method logoutZ : unit
  method loginZ : loginRequest -> loginResult
  method issueTokenForAccountMigrationSettings : bool -> securityCenterResult
  method issueTokenForAccountMigration : string -> securityCenterResult
  method verifyQrcodeWithE2EE : string -> string -> ErrorCode.t -> e2EEPublicKey -> string -> string -> string
end

class processor : iface ->
object
  inherit Processor.t

  val processMap : (string, int * Protocol.t * Protocol.t -> unit) Hashtbl.t
  method process : Protocol.t -> Protocol.t -> bool
end

