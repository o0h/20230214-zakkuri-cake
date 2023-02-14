<?php
declare(strict_types=1);

namespace App\Test\Factory;

use CakephpFixtureFactories\Factory\BaseFactory as CakephpBaseFactory;
use Faker\Generator;

/**
 * articleFactory
 *
 * @method \App\Model\Entity\Article getEntity()
 * @method \App\Model\Entity\Article[] getEntities()
 * @method \App\Model\Entity\Article|\App\Model\Entity\Article[] persist()
 * @method static \App\Model\Entity\Article get(mixed $primaryKey, array $options = [])
 */
class articleFactory extends CakephpBaseFactory
{
    /**
     * Defines the Table Registry used to generate entities with
     *
     * @return string
     */
    protected function getRootTableRegistryName(): string
    {
        return 'articles';
    }

    /**
     * Defines the factory's default values. This is useful for
     * not nullable fields. You may use methods of the present factory here too.
     *
     * @return void
     */
    protected function setDefaultTemplate(): void
    {
        $this->setDefaultData(function (Generator $faker) {
            return [
                'title' => 'title',
                'user_id' => 1,
                'id' => $faker->numberBetween(1, 100),
                'slug' => $faker->text(10),
            ];
        });
    }
}
