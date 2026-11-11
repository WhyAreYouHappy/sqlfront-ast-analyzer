import { useEffect, useState } from "react";

export const useActiveSection = <T extends string>(ids: readonly T[]) => {
  const [active, setActive] = useState<T | null>(null);

  useEffect(() => {
    const sections = ids.map(id => document.getElementById(id));

    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            setActive(entry.target.id as T);
          }
        });
      },
      {
        threshold: 0,
        rootMargin: "-1px 0px -100% 0px",
      }
    );

    sections.forEach((section) => section && observer.observe(section));

    return () => observer.disconnect();
  }, [ids]);

  return active;
};
