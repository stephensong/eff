type t

(** The empty graph. *)
val empty : t

val union : t -> t -> t

val subst : Type.substitution -> t -> t

val garbage_collect : Type.dirt_param list * Type.region_param list -> Type.dirt_param list * Type.region_param list -> t -> t

val add_dirt_constraint : Type.dirt_param -> Type.dirt_param -> t -> t

val remove_dirt : Type.dirt_param -> t -> Type.dirt_param list * Type.dirt_param list * t

val add_region_constraint : Type.region_param -> Type.region_param -> t -> t

val add_full_region : Type.region_param -> t -> t

val print : non_poly:('a, Type.dirt_param, Type.region_param) Trio.t -> t -> Format.formatter -> unit
