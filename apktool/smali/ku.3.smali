.class public Lku;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lld;


# direct methods
.method protected constructor <init>(Lld;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LiB;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lld;

    iput-object v0, p0, Lku;->a:Lld;

    return-void
.end method
