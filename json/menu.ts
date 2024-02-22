export interface Menu {
    headTitle1?: string;
    level?: number;
    headTitle2?: string;
    path?: string;
    title?: string;
    type?: string;
    icon?: string;
    active?: boolean;
    bookmark?: boolean;
    pinnedData?: boolean;
    items?: Menu[];
    children?: Menu[];
}