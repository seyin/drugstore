Medicine.seed(:commercial_name) do |s|
  s.id = 1
  s.commercial_name = 'Alcofen Infantil'
  s.generic_name = 'paracetamol'
  s.laboratory_id = Laboratory.find_by_name('Alcos').id
  s.presentation_id = Presentation.find_by_name('comprimido masticable').id
end

Medicine.seed(:commercial_name) do |s|
  s.id = 2
  s.commercial_name = 'Resfriolito'
  s.generic_name = 'acido acetil salicilico-clorferinamina-penilefedrina'
  s.laboratory_id = Laboratory.find_by_name('Alcos').id
  s.presentation_id = Presentation.find_by_name('comprimido masticable').id
end

Medicine.seed(:commercial_name) do |s|
  s.id = 3
  s.commercial_name = 'Resfrianex'
  s.generic_name = 'paracetamol d-isoefedrina clorferinamina'
  s.laboratory_id = Laboratory.find_by_name('Bago').id
  s.presentation_id = Presentation.find_by_name('comprimido').id
end

Medicine.seed(:commercial_name) do |s|
  s.id = 4
  s.commercial_name = 'Aspirina'
  s.generic_name = 'acido acetilsalicilico'
  s.laboratory_id = Laboratory.find_by_name('Bayer').id
  s.presentation_id = Presentation.find_by_name('comprimido').id
end