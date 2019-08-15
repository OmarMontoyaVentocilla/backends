<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;
use App\Models\Species;
use App\Models\Breeds;

class DestroySpeciesWithoutBreeds implements Rule
{

    private $id;

    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct($request)
    {

        $this->id = $request->get('id');
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        return Breeds::where('name', $this->name)
              ->where('clinic_id', $this->clinic_id)
              ->doesntExist();
        //return false;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        //return trans('validation.unique_product_for_clinic');
        return "Error al intentar eliminar una especie";
    }
}
