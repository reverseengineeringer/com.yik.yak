.class public final enum LCU;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "LCU;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:LCU;

.field public static final enum b:LCU;

.field public static final enum c:LCU;

.field public static final enum d:LCU;

.field private static final synthetic g:[LCU;


# instance fields
.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, LCU;

    const-string v1, "HOME"

    const-class v2, Lcom/yik/yak/ui/fragment/HomeFragment;

    invoke-direct {v0, v1, v3, v2}, LCU;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, LCU;->a:LCU;

    .line 13
    new-instance v0, LCU;

    const-string v1, "PEEK"

    const-class v2, Lcom/yik/yak/ui/fragment/PeekListFragment;

    invoke-direct {v0, v1, v4, v2}, LCU;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, LCU;->b:LCU;

    .line 15
    new-instance v0, LCU;

    const-string v1, "ME"

    const-class v2, Lcom/yik/yak/ui/fragment/MeFragment;

    invoke-direct {v0, v1, v5, v2}, LCU;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, LCU;->c:LCU;

    .line 17
    new-instance v0, LCU;

    const-string v1, "MORE"

    const-class v2, Lcom/yik/yak/ui/fragment/MoreFragment;

    invoke-direct {v0, v1, v6, v2}, LCU;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, LCU;->d:LCU;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [LCU;

    sget-object v1, LCU;->a:LCU;

    aput-object v1, v0, v3

    sget-object v1, LCU;->b:LCU;

    aput-object v1, v0, v4

    sget-object v1, LCU;->c:LCU;

    aput-object v1, v0, v5

    sget-object v1, LCU;->d:LCU;

    aput-object v1, v0, v6

    sput-object v0, LCU;->g:[LCU;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, LCU;->e:Ljava/lang/Class;

    .line 25
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LCU;->f:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static a(LCU;)I
    .locals 3

    .prologue
    .line 33
    invoke-static {}, LCU;->a()[LCU;

    move-result-object v1

    .line 35
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 36
    aget-object v2, v1, v0

    if-ne v2, p0, :cond_0

    .line 41
    :goto_1
    return v0

    .line 35
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(I)LCU;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, LCU;->a()[LCU;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static a()[LCU;
    .locals 1

    .prologue
    .line 10
    sget-object v0, LCU;->g:[LCU;

    invoke-virtual {v0}, [LCU;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LCU;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, LCU;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, LCU;->f:Ljava/lang/String;

    return-object v0
.end method
