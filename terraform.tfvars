# Tags
tagBu = "nchq"
tagOwner = "email_of_person_who_should_be_tagged_as_owner_of_this_bu_sftp@domain.tld"

# Name of Bucket
bucketName = "test"

# A bucket is created as part of this deployment and associated with the sftp users you define below
# The final bucket name is globalsftpbucket appended with <bucketName> as defined above. Example globalsftpbuckettest
# Custom home directory for the users can be defined on a per user level by adding the following variable and replacing / in Entry
# --------------------------------------------------------------------------------------------
# Directory = "[{\\\"Entry\\\": \\\"/\\\", \\\"Target\\\": \\\"/globalsftpbuckettest\\\"}]"

users = [
        {
        Username="grajan"
        PublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAlEWl3TJ3YZXYqh+KqeImcsO0JRqOmKb47n1G5vmcTERl/rHyIQYZnwVi0mrfXW2XO7+i6caMxQ4eRFqV8dZuqP2JImHG8R0Jqfi27M1jCYJO4SH2uLMjM1CkxCbvFB2enSReM7+iodmD4dUAjBuQc1NsFLbxpbRJ7AnGrm0YoRfm80Ln/71ZIH5euChVpr2myY1/0DbxkHiRIUIyurC9s8KxYMgEl32zC1XZJWHY03P53agrrRtQwdbceuR1h+DeI8/03taiXMOcH1Aj9q8r8tWY4jIxtR4cVl2TzZBX+3Fr6QhsXSlht2e8m8uJ87/NnTfWm+mX+ymLnrz9HPCEtQ=="
        },
        { Username = "pmishra"
        PublicKey = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAiFeCcuyWEczEY7tRmx1U+bksIzQg5J8rjrvWT+iqRqt348fbiOPJBJNsmfvFT5uP1dZ1lpT4XGjqQMvBX+oDMvzM4L4JouXmmlrsKCdb527zmqAZ3TsEuCYjZRFkIP2dLT4kXYqRSwXCwdzdA3jNLsffRFaQu+yNV9CVUBYWVjWvBy2OyLF8royA0aMU0NHd9mbLITdRlvqDUEF5vst7HuEEGpvBj+/YDBIId4eYJCLrpoP8NhjCNS06qFSubIOi+x5Wb1c3vzf7augKuofCTKK216JhSjLY2ufXWVhJn5M9jBGqlzeiroThSzDF3+fHy+TbvyQ52SNk1pGn4lNxkw=="
        },
        {
         Username ="sgoli"
         PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEA18v8fI26k1qBvgBVByJDz8F9bY4cMCSUOAxptfbq0pFi7/MZVXTipdZNqYZ4hXMVFvsRzuvc3GDPAF1ra2WeUkwrck/jiopaYqV2Lt/xyvyFiW4dsM93pz6hha+AfdPMaF5PpXbgbjubY0/g7HOXFyUws6jgKEycI6em2nyDeg5du/k4kclxuEVyaYvxO4XWpq/BzpbrS2Pf46PsFx9AHMGrXrUklDQ33tdMHXUokD11Kzb/lvqndkhdJrHV1mcBj0eZ8L98jvjk0s+/AwcMzJ7CiOpXRLfsCVxepBllMKTWxrGQq6N9jFixkD2h9sb1lYCcQen4YXuFxCpnUPH3Pw=="
         },
        {
        Username="skrishna"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAha7wHgeFM9KClKQSd58U6YvNCald8Yple5xBpk80o0CfLZcWadZHJGyHwC4obNhfkzumO9e+9iDDu14RUGIhiDESMCTBsW9Xh9u65S4v7gNOOdbnpvY/1i4lDeh0hR5IcfC1B/ng0OreCfvano2oHrWZrKI7A6Xw/D3AS7/SRHa6RUI2rC0NiShRVgFV8RhOVuVrChYgblJqkl5dQZHss2XpKV4nbRhQrsdmFVJa9eLiIWRbuQOMNAoLN0aAk5lwpaFlrb1+1x4gtVLf3jP97yZKJT/eURNEfEwweRyii2HyuqqhPp73yJfDXyIEUvUS2avY59qrpH69BewrciS7Pw=="
        },
        {
         Username="vmarri"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAplIRLORY/ioXgq5zCwgXl+9E8KpT+xmiRSRc9wnVSht9wAh2ZMLzKCIGmpJRSjpu9GeL7PtDLQxrb3/I5eRnodUmlDgUhBXiFpHGuu3foKVtTayRKW7GJOWBvKnn9CsFUPaZzRakX2cad/uTO5F7b77mq1spB/B375khZHBLvWPmZg1jrU9KijDvH4YgX51ZKUudaia45xsN/q8HFWmUfvpzfIT3xu/HkUdy2/Ad9DAs4G3l96vCZfcvtD/hC2g/QjKYhkmza6LQmOEXII2hzV0AOmWmZ2El10Sv0vaGpn+dl8a6jSRMS1EVDzHWwFLADyantFqUqEPHyRThNJRaPQ=="
        },
        {
         Username="ssgollapudi"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAoTeY+52g6nWyDZ+0keoHW/ufE1bfLiiqEY8v3cSR9YzDyA0kf/TYRy4oUEyHuE8uMCHDkwhoVQRpwreqEi5g0jROwU1OIhDp8kAkFjUqiuaUm7ByvBscyMuq3C6jUkbduQBO8yLEWHJO4a4yq3rb2IrkDltJjkoIlFhLosAKTdO7gMRZqtxLti7x06Jute6BA6VmADDgAEYo52RitxBpQHN7Q8notUDx9mOIqtqbzaHaRBgrAgT1B3T3hxyS5bjkjxTLho+A5f1MSlapFY5Fr3Al1dc/vd0KHCyx7dIFkgZ7kAWSsNYMGD7668mbHdxVmAHEE37vzqHkwAQKs7173w=="
        },
        {
         Username="ssen"
         PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAkGWhoUbc8sPFeIlUp7amRBjfE99L/vXxjwDVyZuGGRY8KCqDwRPP6VW0x4prHuKkVAZv1+Z9B2AMkiMN6fHtS5waPwqB2J32FKZQMkAboppE1Bt/E0xRUba86D6a8ULveLu0DYwBK2FRHY0ZjSbYPHU6cxYTJpMrGaD5GloPIWtoYg1BvS4dXXcfYj7UPwoqkKyTEHhzBOcMM5aqQVJFbyDb/uksggn6gx8VzTRdwQ+jn708ceHLUJ3fKesbveap4aXOZxX7tfBKba5LWvsOsLWpIuIGoKOL1ZJ3V0EZ1Kr+6GOlbrREUqrCdDI6Qa2Se58czsr86txQQAVWic+rIw=="
        },
        {
         Username="vkrishnan"
         PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAiAfjp95Aprg5eF5dpXVFwGXj0HAM6oFLZSGLseCo61qzob7b3ewBbnpD6BmdUQmOoIQtyAh/I1eZUt0fl9iivae+P4ke14LaD+5VLezLNYPG3It8smUMzyvmmQfuBR+KernbPNmdmIxqiJBszTHVma6RoUohQvL/RXcL7F+3ipQu00bGQY7w2Oqnbvrh+nM/Mx8Y/UrQbPS653DQcEAAAx0iiZQv0leudl0hrpSBKpF/ZspxweMSQMTxIn4iK34SiKyQgXr4AN+iO2M8G/+6sqMwuTN4xJ9eKtgOZZNL7l8X9GiWnW5Ock0kktURNPMlCHUYn+6gik4E5Bbdi6p1Jw=="
         },
        {
        Username="qzhong"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAjDXEArFwYmZPEktTUlOxz6RfXgWd4fNQCXNZlfjc43DTQjK16JvbbPDrJdb2umM8yaWVgNrK57YlaqdZjlJh34Ck2V4VBS5ky4QMu7OOmpbCO4nYovnuV66I+Oax6S+Vf8NDKmKO1OtZOReq1j8Yg9KoT+jdVZN5ru9hsMuXxfa47JfOR4TEWXg+btJoMCyF+N+FAv39juyvcZAisQFRXxxvYjoEgL9WptqPZKYNjpI/QfWRbDisT5s9mIAoUs3bUh2FlZP3hz07PjHV7bIRNniIL+QsPaoocuzfXwbxG7xBKtBOnF9NGp5EnjujcS1O5VMy5p/vKZhyCO6h1oOtYQ=="
        },
        {
        Username="smukherjee"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAqeSLLACBLneoGHZHPzNV9MfpVdKDH/m+iqnhePPJj11t6GGmCVlVYNkLrIHckRwpGJ6kz2TgcLX/rOP5yqE6LtDOB39lqz4x6bWgdbfOW02LFWhDwZFh7rpt7aaXWMyGzU296+nCXDZM2sVBkxANTSPCbSDNz8RlfWnGdQV/HLGbJXQT1B66vItxDp+ywErrpPUUs6lvLLV+G2IHxUlCpY6FYgi2E7Fr3WwH3hYWLbBBDvzqtghwXFHcI2G6BA7PHatC92e+iG9ttELi+lZBq6wTsSUo5A2578LsIH0F6f18O+unjSa2IhChl24F85WlhgOolUU6PkGpOgytZvNL4Q=="
        },
        {
        Username="sverma"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAmzaDhGaf4tmySJiuAjfUBbKuUUQlSxEU3HZ2Zlt9IiqZuasFmzm3ceZMHW4lggyFB0efZlZs9mXQXCi4mZzX6SAkOI6wuVnJkf2rO2pDz18EWacPq5kPugTbNsujCdmhbV14mEQMTxtKU1P52Uj8RgWBz5NwfDR+vhJQSIt6ztpMgbY6CwOYW551DRzyL4tLafo5Rq4j3k8/rTmuEhZd85IsDF8qbsKW6DoedlSLalXhm7si+p553+CnbpwzB6HELbdh9BjvQt6hBeqTq+bxlK6vZjL/ju8ISpNsNiAZz3/wbNGmSM69tQDjdfUwM0cpE8ulFTYHxj1v0IXn+u0+mw=="
        },
        {
         Username="mkumar"
         PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAigYGO/m0bjnJNnX7Nm6N7CBzsuFjjDjTrGYmt4fjDTAXHsg7UBQCwZxg1U4dTk9G+2RgZzs8IAeB1jfo/Zz7FTHPsGEuJGCMmnP2Yk79zm1N3J4nWdln2uuoVc3hUeK3HHMCDXfNcTG1Ko5ozi3Nuzgn1Th+OEflK9eF43B/ZQtCtCWZKU7Tp6uONJjHXVgnk4PiB7crFBVC1cZV2ju6SAXtB+QVRJuKVuflwdLB/BsNKh7gQgR0xOX58kpGudVHLaF8oSGmF1Hg4dYWik/dA0l/XgdVzrWmk5rnXG8UAhv5OV8E7N1VR6RQ131Mxi059mBnebgR8oTKnakPqRD0iQ=="
        },
        {
        Username="npolu"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAjyfvvJBYtE4Jf2WOF9ZWxFqqoHib1wX/rwlXpbCAmMdRdF3AQZkTW51NgqSvsztaujagXGeu3aTK79jayNuMZvj6LskpSlcBV2T3gUQSgEdJkPcI2OKLvSwLcxKLM9nkRPomSBmsLzUxFgM8MlMLx9URJ4BCj52BDYRbZ2QYerM0HeW4TlMkt7BOWDJX0kXEVNEzclzsgZkxHxz1sb4rlgLmcATEfAzRYDC6jtRZSMuypZJylRLIyFCvQvVp86zQRdCqD7GJJe3m2fjoE6Ge5DJexj4kgHJRT9ZyaC3ngyrOUJ+hDVPz3w2JpnGrmRgLRT3WxhnXPBgJ6iBLHo0ipQ=="
        },
        {
        Username="mkundu"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAimceXfwAjdrgk/1sGT+Qct7SbLvYLvlgWQygqEEXzNTVSyVQ0WQIehiJc33o3xyzoTkItcMPpX2JRu3cHS/E1YaElqTILFou6jatiOGY0ke8qMyWYMoUPakTtAhy9mn/kWEMEW8m4cO7iu9REQuHb/LBNN9RXFkdvmRi4cusAFs6OtL0BxitCIfwFz/1TnTWtxCQBcAkOfGNkDXhbZScZpDnQu6n12SNXnT83DVwZZGeKffuitK4k+Q3ZB1urHyUlYXeaCJgHxznJYD/P+tXOD9GKmWAJ8oErHsfCqoTt3a7S8R1hVqD3SP4CLIivndNx5ci8kpLGPC21cXhpzenQQ=="
        },
        {
        Username="gowdan"
        blicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAicB1OrPPgrxHDFQUj5aVPJkSzG80P62zS/sauTs0Bufek/kuXzRiHozPHL0k1kLo3EcaVbhppf1wRWmxrzr8fGC8V/WYguGnOHlFmeW6+ruocIGqYseLsms9a8S7OcuiJ0LX5cgsMz5rtcGdOi7FBhHSvyR+NxPqSRA8xp27VdwLTbWPoUbHTCdooP1loCPV3MNnB1WQEQ/gAJWxEbTnl4rXHs5B6H9XRRIb+2UzU9bHns+yPUVLDRM0HgRqKyRPhJzSuDh9PGMzErWUa8PQma1uX8uKMKcWVmgY+0oGadIlZh7RKBFJ7Ave/4g68l2otRpPWU2oDdOP/oeoZ+mUXQ=="
        },
        {
        Username="janderson"
        PublicKey ="ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAk8dKprlSXh//y5Y+QseeK42zBbESodE8aWeRUy32SOtfODOdXLOqer6rEzYPrcvDGd3MnZYLbiplJNb3XWeNLl5SH3q1YXq16QMkWi97oMx/fn1RvQPsZR4p88YYHoWb+uOJM4EmcTfhLlf4cQp60l7qNQbTsFAwnl5xysMhL+Zqp9ZEz3Nb7qtmdaq+yBeA+1jO2xSmiYR7E/Y83hjhuWbiP0kdlDUv/jdB3WNja4sawzMy5hPKYvKfXpgAW36pyMATTwL5VKRBFMWB9aZQhjyxJPoQEYT+LzWpweQ2H3qVJw8Wcqnzm6uvmyYudjOWy52c0c8YMqVUawcEP88djw=="
        }

]
