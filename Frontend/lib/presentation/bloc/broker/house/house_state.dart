abstract class HouseState{}

abstract class HouseActionState extends HouseState{}

class InitialState extends HouseState{}
class LoadingState extends HouseState{}

class PostSuccessState extends HouseActionState{}

class HouseAddErrorState extends HouseActionState{}
