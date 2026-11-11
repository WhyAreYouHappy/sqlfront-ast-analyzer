import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";

import { useAppSelector } from "@/shared/hooks/redux";

import { Layout, type LayoutProps } from "./layout";

export const ProtectedLayout = ({ children }: LayoutProps) => {
  const { replace } = useRouter();
  const { token } = useAppSelector((state) => state.auth);
  const [isMounted, setIsMounted] = useState(false); //TODO: add cookie auth and remove it
  
  useEffect(() => {
    setIsMounted(true);
  }, []);

  useEffect(() => {
    if (isMounted && !token) {
      replace("/auth");
    }
  }, [isMounted, token, replace]);
  
  if (!isMounted) {
    return null;
  }

  return (
    <Layout>
      {children}
    </Layout>
  );
};
