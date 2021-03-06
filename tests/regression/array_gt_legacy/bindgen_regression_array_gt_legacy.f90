! This file is generated!
module bindgen_regression_array_gt_legacy
implicit none
  interface

    subroutine fill_array_impl(arg0) bind(c, name="fill_array")
      use iso_c_binding
      use bindgen_array_descriptor
      type(bindgen_fortran_array_descriptor) :: arg0
    end subroutine

  end interface
contains
    subroutine fill_array(arg0)
      use iso_c_binding
      use bindgen_array_descriptor
      real(c_double), dimension(:,:,:), target :: arg0
      type(bindgen_fortran_array_descriptor) :: descriptor0

      descriptor0%rank = 3
      descriptor0%type = 6
      descriptor0%dims = reshape(shape(arg0), &
        shape(descriptor0%dims), (/0/))
      descriptor0%data = c_loc(arg0(lbound(arg0, 1),lbound(arg0, 2),lbound(arg0, 3)))

      call fill_array_impl(descriptor0)
    end subroutine
end
