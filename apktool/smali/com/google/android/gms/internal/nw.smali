.class public Lcom/google/android/gms/internal/nw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Ljx;


# instance fields
.field public final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljx;

    invoke-direct {v0}, Ljx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nw;->CREATOR:Ljx;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/nw;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/nw;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/nw;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/nw;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nw;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nw;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nw;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/nw;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/nw;

    iget-object v1, p0, Lcom/google/android/gms/internal/nw;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nw;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lix;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nw;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nw;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lix;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/nw;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/nw;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lix;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/nw;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/nw;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/nw;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lix;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lix;->a(Ljava/lang/Object;)Liz;

    move-result-object v0

    const-string v1, "mPlaceId"

    iget-object v2, p0, Lcom/google/android/gms/internal/nw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Liz;->a(Ljava/lang/String;Ljava/lang/Object;)Liz;

    move-result-object v0

    const-string v1, "mTag"

    iget-object v2, p0, Lcom/google/android/gms/internal/nw;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Liz;->a(Ljava/lang/String;Ljava/lang/Object;)Liz;

    move-result-object v0

    const-string v1, "mSource"

    iget-object v2, p0, Lcom/google/android/gms/internal/nw;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Liz;->a(Ljava/lang/String;Ljava/lang/Object;)Liz;

    move-result-object v0

    invoke-virtual {v0}, Liz;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljx;->a(Lcom/google/android/gms/internal/nw;Landroid/os/Parcel;I)V

    return-void
.end method
